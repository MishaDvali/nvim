using namespace std;
#include <bits/stdc++.h>
#include <cmath>


bool DEBUG = false;  // <-- toggle this
void debug(const string &msg, long long val = LLONG_MIN) {
    if (DEBUG) {
        cout << msg;
        if (val != LLONG_MIN) cout << val;
        cout << "\n";
    }
}

void debug_left(int left) {
    if (!DEBUG) {
        return;
    }
    cout << "Left: " << left << "\n";
}


int calc_for_perfect_cube(long int side) {
    return 3*(side + 1)*(side+1)*(side);
}
int calc_for_perfect_square(long int side) {
    return (side+1) * (side+1) + 2 * side *(side+1);
}
int calc_for_edge(long int side) {
    return side * 3 + 2;
}
int calc_for_imperfect_square(long int squares) {
    long int ans = 0;
    long int side = sqrt(squares);
    long int left = squares-side*side;
    if (DEBUG) {cout << "Squares: " << squares << " Side: " << side << " Left: " << left << "\n";}
    ans += side * (3*side + 2) + 2*side + 1;
    if (left == 0) { return ans;}
    ans += 3 * left + 2*ceil(left/(double)side);
    return ans;
}
int solve(long int n) {
    long int ans;
    long int cube = cbrt(n);
    long int left = n - cube*cube*cube;
    long int prev_ans;
    ans += calc_for_perfect_cube(cube);


		
    debug("Cube: ", ans);
    debug_left(left);
    prev_ans=ans;

    if (left == 0) { return ans; }
    if (left >= cube*cube) {
        // filling first face (grey)
        left -= cube*cube;
        ans += calc_for_perfect_square(cube);

        debug("Grey: ", ans - prev_ans);
        debug_left(left);
        prev_ans=ans;

        if (left == 0) {return ans;}
        if (left >= cube*cube) { 
            // filling second face (dark red)
            left -= cube*cube;
            ans += calc_for_perfect_square(cube);

            debug("Dark red: ", ans - prev_ans);
            debug_left(left);
            prev_ans=ans;

            if (left == 0) {return ans;}
            // filling edge (light red)
            ans += calc_for_edge(min(cube, left));
            left -= min(cube, left);

            debug("Light red: ", ans - prev_ans);
            debug_left(left);
            prev_ans=ans;
             
            if (left == 0) {return ans;}
            if (left > (cube+1)*(cube+1)) {
                // filling orange (3rd face and 2 edges and verticy)
                ans += calc_for_perfect_square(cube+1);
                left -= (cube+1) * (cube+1);

                debug("Orange: ", ans - prev_ans);
                debug_left(left);
                prev_ans=ans;

                if (left == 0) {return ans;}
                if (left > (cube+1)*(cube+1)) {
                    // filling yellow (4th face and 2 edges and verticy)
                    ans += calc_for_perfect_square(cube+1);
                    left -= (cube+1) * (cube+1);

                    debug("Yellow: ", ans-prev_ans);
                    debug_left(left);
                    prev_ans=ans;   

                    if (left == 0) {return ans;}
                    if (left > cube * cube) {
                        // filling green
                        
                        prev_ans=ans;
                        ans += calc_for_perfect_square(cube);
                        left -= cube*cube;
                        debug("Green: ", ans-prev_ans);
                        debug_left(left);
                        if (left == 0 ) {return ans;}
                        //filling blue
                        ans += min(left, cube*3+2) * 3;
                        ans += 2*ceil(left / (double)cube);
                        left -= min(left, cube*3+2);

                        debug("Blue: ", ans-prev_ans);
                        debug_left(left);
                        prev_ans=ans;
                        if (left == 0) {return ans;}
                        // TODO half face cube+2
                        ans+= calc_for_imperfect_square(left);
                    } else {
                        // TODO half face cube
                        ans += calc_for_imperfect_square(left);
                    }
                } else {
                    // TODO half face cube+1
                    ans += calc_for_imperfect_square(left);
                }
            } else {
                // TODO half face cube +1
                ans += calc_for_imperfect_square(left);
            }
        } else {
            ans += calc_for_imperfect_square(left);
            // TODO half face
        }
    } else {
        ans += calc_for_imperfect_square(left);
        // TODO half face
    }
    return ans;
}
int main() {
    ios_base::sync_with_stdio(0);
    cin.tie(0);
    cout.tie(0);

    // example below, replace it with your solution
    long int n;
    cin>>n;
    
    cout << solve(n);
    // for (int i = 1;i < 28;i++) {
    //     cout<<solve(i)<<"\n";
    // }
}

