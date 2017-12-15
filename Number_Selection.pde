int[] range = new int[5];
int[] numbers = new int[10];

void shuffler() {

    for(int i = 0; i < range.length; i++) {
      range[i] = i*10 + 10;
    text(range[i]-9 + " - " + range[i], 200+i*50, 150); //This is not actually supposed to be seen
    for(int j = 0; j < numbers.length; j++) {
      numbers[j] = range[i]-j;
      text(numbers[j], 200+i*50, 200+j*20); //This is not actually supposed to be seen
    }
  }
  
}