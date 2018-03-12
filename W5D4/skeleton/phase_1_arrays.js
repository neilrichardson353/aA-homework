function uniq(array) {
var answer = [];

array.forEach(function(el) {
  if (answer.includes(el) === false) {
    answer.push(el);
  }
});
return answer;
}

function twosum(array) {
  var answer = [];

for(var i = 1; i < array.length; i++ ){
  for(var j = 0; j < array.length; j++){
      if (array[i] + array[j] === 0 && i > j){
        answer.push([array[i], array[j]]);
      }
  }
}
return answer;
}

function transpose(array) {
  var answer = [];

  for(var i = 0; i < array[0].length; i++) {
    console.log(i);
    for(var j = 0; j < array[i].length; j++) {
      console.log(array[j]);
      if (array[j] !== undefined && array[j][i] !== undefined) {
        answer.push(array[j][i]);
      }
    }
  }
  return answer;
}

Array.prototype.myEach = function(callback) {
  var answer = [];
  for(var i = 0; i < this.length; i++){
      answer.push(callback(this[i]));
  }
  return answer;
};

Array.prototype.myMap = function(callback) {
  for(var i = 0; i < this.length; i++){
      this[i] = callback(this[i]);
  }
return this;
};

Array.prototype.myReduce = function(callback, initialValue) {
  if (initialValue) {
    var answer = initialValue;
    var idx = 0;
  }else {
    var answer = this[0];
    var idx = 1;
  }
  for(var i = idx; i < this.length; i++){
      answer += callback(this[i]);
  }
return answer;
};

function test(num) {
  return (num * 2);
}

Array.prototype.bubbleSort = function() {
  var answer = Object.assign([],this);
  var unsorted = true;

  while (unsorted) {
    unsorted = false;

    for(var i = 0; i < answer.length; i ++){
      console.log(i);
      if (i + 1 > answer.length) { break;}
      console.log('after if');
      if (answer[i] > answer[i + 1]) {
        var index = answer[i];
        answer[i]   = answer[i + 1];
        answer[i+1] = index;
        unsorted  = true;
      }

    }
  }
  console.log('answer is:');
console.log(answer);
return answer;
};

String.prototype.substrings = function() {
  var answer = [];

  for(var i = 0; i < this.length; i++){
    for(var j = i + 1; j < this.length; j++){
      answer.push(this.slice(i,j));
    }
  }
  console.log(answer);
};

function range(start, end) {
  if (start === end) {
    return [end];

  }else {
    var recur = range(start+1, end);
    recur.unshift(start);
    return recur;
  }
}

function sumRec(arr) {
  if (arr.length === 1) {
    return arr[0];
  } else {
    var add = arr.pop();
    var answer = sumRec(arr) + add;
    return answer;
  }
}

function exponent(base, exp) {
  if (exp === 1) {
    return base;
  }else {
    var answer = base * exponent(base, exp-1);
    return answer;
  }
}

function fibonacci(n) {
  if (n === 0) { return 0; }
  if (n === 1) { return [1]; }
  if (n === 2) { return [1,1]; }
  else {
    var answer = fibonacci(n-1);
    var fibNum   = answer[answer.length-1] + answer[answer.length-2];
    answer.push(fibNum);
    return answer;
  }
}

function deepDup(arr) {
  var answer = [];
    arr.forEach(function(el){
      if (typeof el === 'object') {
        var deepArr = deepDup(el);
        deepArr.forEach(function(el2){
          answer.push(el2);
        });
      } else {
        answer.push(el);
      }
    });
  return answer;
}

function bsearch(arr, target){
  if (arr.length === 0) {
    return - 1;

  }
  var mid = Math.floor(arr.length/2);
  var midNum = arr[mid];

  if (midNum === target) {
    return mid;
  } else if (target < midNum ){
    var barr = arr.slice(0,mid);
    return bsearch(barr, target);
  } else  {
    var barr = arr.slice(mid + 1);
    var subProb = bsearch(barr, target);
    return subProb === - 1 ? -1 : subProb + (mid + 1);
  }

}

function merge(left, right) {


}

function  mergesort(arr) {
  if (arr.length === 1) {
    return arr;
  }

  var mid = Math.floor(arr.length/2);
  var LeftArr = mergesort(arr.slice(0, mid));
  var rightArr = mergesort(arr.slice(mid));
  var sortedArry = [];

  while (LeftArr.length > 0 && rightArr.length > 0){
    console.log('leftarr = ' + LeftArr);
    console.log('rightArr = ' + rightArr);
    var rightEx = rightArr.pop();
    var leftEx  = LeftArr.pop();

    switch (rightEx < leftEx) {
      case true:
        sortedArry.push(rightEx);
        break;
      case false:
        sortedArry.push(leftEx);
        break;
      default:
        sortedArry = sortedArry.concat(rightArr, LeftArr);
    }
  }
  return sortedArry;
}

function subsets(arr) {
  var answer = [];
  if (arr.length === 1) {
    return [arr];
  }
  var pop = arr.slice(-1);
  var array = subsets(arr.slice(0,-1));
  var arrayclone = array.slice(0);
  answer.push(pop);
  array.forEach(function(theArray){
    for (var i = 0; i < theArray.length + 1; i++) {
      answer.push(theArray.slice(0,i).concat(pop, theArray.slice(i)));
    }
  });
  for (var i = 0; i < arrayclone.length; i++) {
    answer.push(arrayclone[i]);
  }
  return answer;
}

function Cat(name, owner) {
  this.name = name;
  this.owner = owner;
}
Cat.prototype.cutestatement = function() {
  console.log(this.owner + ' loves ' + this.name);
};

Cat.prototype.meow = function () {
  console.log('mewo');
};

alley.meow = function() {
  console.log('purr');
};

function Student(first, last) {
  this.first    = first;
  this.last     = last;
  this.courses  = [];
}


Student.prototype.name = function() {
  console.log(this.first + " " + this.last);
};

Student.prototype.enroll = function(course) {
  this.courses.push(course);
  course.addStudent(this);
};

Student.prototype.courseLoad = function() {
  var coursehash = {};
  this.courses.forEach(function(course){
    var dept = course.dept;
    if (coursehash.course === undefined){
      coursehash.dept = course.credit;
    }else {
      coursehash.dept += course.credit;
    }}
  );
    console.log(coursehash);
};

function Course(name, dpt, credit) {
  this.name   = name;
  this.dept   = dpt;
  this.credit = credit;
  this.students = [];
}


Course.prototype.addStudent = function(student) {
    this.students.push(student);
    var add = true;
    this.students.forEach(function(kid){
      if (kid === student){
        console.log(kid + ' ' + student);
        add = false;
      }
    });
    if (add) {
      student.enroll(this);
    }
};

var Jen = new Student('Jen', 'Richardson');
var Lee = new Student('Lee', 'Richardson');
var Neil = new Student('Neil', 'Richardson');
var Math101 = new Course(101, 'Math', 5);
var Math202 = new Course(202, 'Math', 10);
var Art = new Course(101, 'Art', 3);
var Chem101 = new Course(101, 'Chem', 5);
