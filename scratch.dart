

void main(){
  performTask();
}
void performTask() async{
  task1();
  String task2Result = await  task2();
  task3(task2Result);
}
void task1(){
  String result = 'task 1 data';
  print('task1 completed');
}
Future task2() async {
  Duration threeSeconds = Duration(seconds:3);
  
  String result;

  await Future.delayed(threeSeconds, (){
  String result = 'task 2 data';
  print('task2 completed');   
  });
  
  return result;

}
void task3(String task2data){
  String result ='task3 data';
  print('task3 completed $task2data');
}