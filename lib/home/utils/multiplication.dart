/// calculate multiplications From [1] to [maxNumber] as Map String
Map calculateMultiplication(int maxNumber) {
  Map result = {};

  for (int i = 1; i <= maxNumber; i++) {
    result[i.toString()] = {};
    for (int i2 = 1; i2 <= 10; i2++) {
      result[i.toString()]["$i * $i2"] = (i * i2).toString();
    }
  }
  return result;
}
