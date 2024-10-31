import 'dart:math';

void main() {
  print(findMaxAverage([1, 12, -5, -6, 50, 3], 4));
  print(findMaxAverage([5], 1));
  print(findMaxAverage2([1, 12, -5, -6, 50, 3], 4));
  print(findMaxAverage2([5], 1));
}

double findMaxAverage(List<int> nums, int k) {
  double result = 0.0;
  int numsLength = nums.length;

  // k 가 nums 길이보다 크면 k 의 배월 원소들의 평균을 구하기
  if (numsLength <= k) {
    result = nums.reduce((pre, post) => pre + post) / numsLength;
    result = double.parse(result.toStringAsFixed(5)); // 소수점 5번째 자리 올림
  } else {
    int i = 0;
    List<double> resultList = []; // 평균 값 모음

    while (i <= numsLength - k) {
      // k 길이 만큼 배열 잘라서 더한 값
      int temp = 0;
      for (int j = i; j < k + i; j++) {
        temp += nums[j];
      }
      resultList.add(double.parse((temp / k).toStringAsFixed(5)));
      i++;
    }

    // 평균 값 모음 sorting 후 제일 큰 값 result 에 할당
    resultList.sort();
    result = resultList[resultList.length - 1];
  }
  return result;
}

// 슬라이딩 윈도우 기법 사용
double findMaxAverage2(List<int> nums, int k) {
  int sum = 0;
  // nums 배열에서 k 번째 원소까지 더하기
  for (int i = 0; i < k; i++) {
    sum += nums[i];
  }

  // k 번째 원소의 합 저장
  int maxSum = sum;

  // k 번째부터 nums 길이까지
  // sum 에서 k 윈도우 앞 원소 빼고 k 윈도우에 포함된 뒷 원소 더하기
  for (int i = k; i < nums.length - 1; i++) {
    sum = sum - nums[i - k] + nums[k];
    maxSum = max(sum, maxSum); // maxSum 에 최댓값 저장
  }

  return maxSum / k;
}
