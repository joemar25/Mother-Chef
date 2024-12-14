import java.io.*;
import java.math.*;
import java.security.*;
import java.text.*;
import java.util.*;
import java.util.concurrent.*;
import java.util.function.*;
import java.util.regex.*;
import java.util.stream.*;
import static java.util.stream.Collectors.joining;
import static java.util.stream.Collectors.toList;

class Result {

    /*
     * Complete the 'plusMinus' function below.
     *
     * The function accepts INTEGER_ARRAY arr as parameter.
     */

    public static void plusMinus(List<Integer> arr) {
        float value_counts[] = new float[3];
        value_counts[0] = 0; // positive
        value_counts[1] = 0; // negative
        value_counts[2] = 0; // zero

        for (int i = 0; i < arr.size(); i++) {
            if (arr.get(i) > 0) {
                value_counts[0] += 1;
            } else if (arr.get(i) < 0) {
                value_counts[1] += 1;
            } else {
                value_counts[2] += 1;
            }
        }

        for (int i = 0; i < value_counts.length; i++) {
            System.out.println(value_counts[i] / arr.size());
        }
    }

}

public class plus_minus {
    public static void main(String[] args) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(System.in));

        int n = Integer.parseInt(bufferedReader.readLine().trim());

        List<Integer> arr = Stream.of(bufferedReader.readLine().replaceAll("\\s+$", "").split(" "))
                .map(Integer::parseInt)
                .collect(toList());

        Result.plusMinus(arr);

        bufferedReader.close();
    }
}
