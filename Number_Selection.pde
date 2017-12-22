int[] numbers = new int[75];

void putThisSomewhere() {
  for (int i = 0; i < numbers.length; i++) {
    numbers[i] = i + 1;
  }
}

int [] shuffle(int [] arrayToBeShuffled, int numberOptionsPerColumn) {
  //Actually shuffles the array here
  IntList temp = new IntList();
  for (int i = 0; i < 5; i++) {  //number of columns
    for (int j = 0; j < numberOptionsPerColumn; j++) {
      temp.append(arrayToBeShuffled[j + numberOptionsPerColumn * i]); //creating intlist
    }
    temp.shuffle();  //shuffles the intlist
    for (int j = 0; j < numberOptionsPerColumn; j++) {
      arrayToBeShuffled[j + numberOptionsPerColumn * i] = temp.get(j); //moves the intlist back to the array  
    }
    temp.clear(); //empties the temp intlist
  }
  return arrayToBeShuffled; //return the array to the caller
}