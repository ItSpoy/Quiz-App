import 'package:quiz_app/models/model.dart';

class Data {
  static List<Category> categories = [
    Category(
      name: 'Flutter',
      image: 'assets/Flutter.png',
      quizSets: [
        QuizSet(
          name: 'Quiz Set 1',
          questions: [
            Question(
              'What is Flutter?',
              [
                'A UI framework',
                'A programming language',
                'An operating system',
                'None of the above'
              ],
              0,
            ),
            Question(
              'What language is Flutter written in?',
              ['Dart', 'Java', 'Kotlin', 'C++'],
              0,
            ),
            Question(
              'What is hot reload in Flutter?',
              [
                'A feature for quickly seeing changes in code',
                'A widget',
                'A plugin',
                'None of the above'
              ],
              0,
            ),
            Question(
              'Which widget is used to display images in Flutter?',
              ['Image', 'ImageView', 'ImageBox', 'ImageDisplay'],
              0,
            ),
            Question(
              'What is the purpose of MaterialApp widget in Flutter?',
              [
                'To create a Material Design app',
                'To define app theme',
                'To handle app routing',
                'None of the above'
              ],
              0,
            ),
            Question(
              'What is a StatefulWidget in Flutter?',
              [
                'A widget with mutable state',
                'A static widget',
                'A stateless widget',
                'None of the above'
              ],
              0,
            ),
            Question(
              'What is the purpose of setState() method in Flutter?',
              [
                'To update the state of a StatefulWidget',
                'To build the UI',
                'To navigate to another screen',
                'None of the above'
              ],
              0,
            ),
            Question(
              'What is the purpose of Scaffold widget in Flutter?',
              [
                'To implement basic material design layout structure',
                'To handle user input',
                'To display images',
                'None of the above'
              ],
              0,
            ),
            Question(
              'What is the main function in Flutter?',
              [
                'Entry point of the app',
                'To define app theme',
                'To define app routing',
                'None of the above'
              ],
              0,
            ),
            Question(
              'What is the purpose of pubspec.yaml file in Flutter project?',
              [
                'To define project dependencies',
                'To define UI layout',
                'To define app theme',
                'None of the above'
              ],
              0,
            ),
          ],
        ),
        QuizSet(
          name: 'Quiz Set 2',
          questions: [
            Question(
              'What is a widget in Flutter?',
              [
                'A building block of the user interface',
                'A programming language',
                'A UI framework',
                'None of the above'
              ],
              0,
            ),
            Question(
              'What is the purpose of StatelessWidget in Flutter?',
              [
                'To represent immutable UI',
                'To handle user input',
                'To manage app state',
                'None of the above'
              ],
              0,
            ),
            Question(
              'What is the difference between hot reload and hot restart in Flutter?',
              [
                'Hot reload updates the UI without restarting the app',
                'Hot restart restarts the app',
                'They are the same',
                'None of the above'
              ],
              0,
            ),
            Question(
              'What is the purpose of the Material class in Flutter?',
              [
                'To implement Material Design',
                'To define app theme',
                'To manage app routing',
                'None of the above'
              ],
              0,
            ),
            Question(
              'What is the purpose of Cupertino widgets in Flutter?',
              [
                'To implement iOS-style UI',
                'To handle user input',
                'To display images',
                'None of the above'
              ],
              0,
            ),
          ],
        ),
        // Add more quiz sets for Flutter
      ],
    ),
    Category(
      name: 'React Native',
      image: 'assets/React Native.png',
      quizSets: [
        QuizSet(
          name: 'Quiz Set 1',
          questions: [
            Question(
              'What is the primary purpose of React.js?',
              [
                'To build user interfaces',
                'To manage databases',
                'To create server-side applications',
                'To handle file uploads'
              ],
              0,
            ),
            Question(
              'How does React handle data flow between components?',
              [
                'One-way data binding',
                'Two-way data binding',
                'Data streams',
                ' State-only propagation'
              ],
              0,
            ),
            Question(
              'What is the virtual DOM in React?',
              [
                'A lightweight copy of the real DOM that is updated efficiently',
                'A clone of the real DOM',
                'A version of the DOM stored in the browser’s memory',
                'A third-party library for handling DOM manipulation'
              ],
              0,
            ),
            Question(
              ' What is JSX in React?',
              [
                'JavaScript XML, a syntax extension for writing HTML inside JavaScript',
                'A database language',
                'A styling library for React',
                'A version of JavaScript used only by React'
              ],
              0,
            ),
            Question(
              'What is the use of the useEffect hook in React?',
              [
                'To handle side effects, such as data fetching or manual DOM manipulation',
                'To return JSX',
                'To manage local state',
                'To define event handlers'
              ],
              0,
            ),
            // Add questions for Quiz Set 1 of React Native
          ],
        ),
        QuizSet(
          name: 'Quiz Set 2',
          questions: [
            Question(
              'Which method is used to handle component lifecycle in class components?',
              [
                'componentDidMount',
                'useEffect',
                'componentDidUnmount',
                'componentWillUpdate'
              ],
              0,
            ),
            Question(
              'What is the correct way to pass data between parent and child components?',
              [
                'By passing data as props from parent to child',
                'Using Redux',
                'By using useState',
                'By declaring global variables'
              ],
              0,
            ),
            Question(
              ' How can you prevent a component from rendering in React?',
              [
                'By returning null in the render method',
                'By using the shouldComponentUpdate lifecycle method in class components',
                'By using the stopRendering method',
                'By setting this.state.preventRender = true'
              ],
              0,
            ),
            Question(
              "What is the purpose of React's key prop in lists?",
              [
                'To uniquely identify each list item and help React optimize re-rendering',
                ' To define the style of each list item',
                'To manage state within the list',
                'To handle form submissions in list items'
              ],
              0,
            ),
            Question(
              'How do you update the state of a component in React?',
              [
                'Using this.setState()',
                'Directly modifying this.state',
                'Assigning a new value to this.state',
                'Using this.updateState()'
              ],
              0,
            ),
          ],
        ),
        QuizSet(
          name: 'Quiz Set 3',
          questions: [
            Question(
              'What is the purpose of useState in React functional components?',
              [
                'To define prop types',
                'To manage side effects',
                'To declare and manage component state',
                'To handle routing',
              ],
              0,
            ),
            Question(
              " Which hook would you use to access a DOM element directly in a functional component?",
              [
                'useEffect',
                'useState',
                'useRef',
                'useMemo',
              ],
              0,
            ),
            Question(
              'How do you pass a method from a parent component to a child component in React?',
              [
                'By passing it as a prop',
                'By using context',
                'By using useState',
                'By declaring it globally',
              ],
              0,
            ),
            Question(
              'What does useMemo hook do in React?',
              [
                'It allows you to manipulate the virtual DOM',
                'It helps to avoid unnecessary re-renders by memoizing the result of a function',
                'It manages the components state',
                'It is used to directly update the DOM',
              ],
              0,
            ),
            Question(
              'How can you handle forms in React?',
              [
                'Using this.formHandler() method',
                'By using HTML form elements and controlling their values via onSubmit',
                'By using the useEffect hook',
                'React doesnt support forms',
              ],
              0,
            ),
          ],
        ),
      ],
    ),
    Category(
      name: 'Python',
      image: 'assets/Python.png',
      quizSets: [
        QuizSet(
          name: 'Quiz Set 1',
          questions: [
            Question(
              'What is the correct way to create a function in Python?',
              [
                'def myFunction():',
                'def myFunction:',
                'function myFunction():',
                'function myFunction()',
              ],
              0,
            ),
            Question(
              "How do you create a list in Python?",
              [
                'myList = [1, 2, 3]',
                'myList = (1, 2, 3)',
                'myList = {1, 2, 3}',
                'myList = <1, 2, 3>',
              ],
              0,
            ),
            Question(
              'print(type([])) ',
              [
                '<class list>',
                '<class tuple>',
                '<class dict>',  
                '<class set>',
              ],
              0,
            ),
            Question(
              ' What is the correct syntax for a conditional statement in Python?',
              [
                'if x > 5:',
                'if (x > 5) then:',
                'if x > 5 then:',
                'if x > 5 {',
              ],
              0,
            ),
            Question(
              'Which of the following is a mutable data type in Python?',
              [
                'List',
                'Tuple',
                'String',
                'Integer',
              ],
              0,
            ),
            // Add questions for Quiz Set 1 of Python
          ],
        ),
        QuizSet(
          name: 'Quiz Set 2',
          questions: [
            Question(
              'What is the purpose of the `range()` function in Python?',
              [
                'To return a sequence of numbers',
                'To generate a list of numbers',
                'To iterate over a list',
                'To sort a list',
              ],
              0,
            ),
            Question(
              "Which keyword is used to handle exceptions in Python?",
              [
                'except',
                'catch',
                'try',
                'throw',
              ],
              0,
            ),
            Question(
              'What is a lambda function in Python?',
              [
                'A small anonymous function defined with the `lambda` keyword',
                'A function that runs only once',
                'A function that takes no arguments',  
                'A recursive function',
              ],
              0,
            ),
            Question(
              ' What will be the output of the following code? print(2 ** 3)',
              [
                '8',
                '9',
                '5',
                '6',
              ],
              0,
            ),
            Question(
              'How do you create a tuple in Python?',
              [
                'myTuple = ()',
                'myTuple = []',
                'myTuple = {}',
                'myTuple = <>',
              ],
              0,
            ),
          ],
        ),
        
      ],
    ),
    // Add more categories with quiz sets and questions
    Category(
      name: 'C#',
      image: 'assets/C#.png',
      quizSets: [
        QuizSet(
          name: 'Quiz Set 1',
          questions: [
            Question(
              'How do you declare an integer variable in C#?',
              [
                'int num = 10;',
                'num int = 10;',
                'integer num = 10;',
                'int num = "10";',
              ],
              0,
            ),
            Question(
              "What is the correct syntax for creating a method in C#?",
              [
                'void MyMethod() {}',
                'function MyMethod() {}',
                'def MyMethod()',
                'method MyMethod {}',
              ],
              0,
            ),
            Question(
              'What is the default value of a boolean variable in C#?',
              [
                'private',
                'public',
                'protected',  
                'internal',
              ],
              0,
            ),
            Question(
              ' What will be the output of the following code? print(2 ** 3)',
              [
                'false',
                'true',
                'null',
                '0',
              ],
              0,
            ),
            Question(
              'How do you create an object of a class in C#?',
              [
                'MyClass obj = new MyClass();',
                'MyClass obj = MyClass();',
                'new MyClass obj = MyClass();',
                'MyClass obj = new();',
              ],
              0,
            ),
          ],
        ),
        QuizSet(
          name: 'Quiz Set 2',
          questions: [
            Question(
              'What is the purpose of the static keyword in C#?',
              [
                'It restricts access to the method',
                'It allows the method to be called without creating an object of the class',
                'It makes a method accessible from other classes',
                'It specifies  method should return a value',
              ],
              1,
            ),
            Question(
              "How do you write a single-line comment in C#?",
              [
                '// comment',
                '# comment',
                '/* comment */',
                '-- comment',
              ],
              0,
            ),
            Question(
              'What is inheritance in C#?',
              [
                'A way to modify methods in the same class',
                'A way to create a new class that is based on an existing class',
                'A way to store multiple values in a single variable',  
                'A way to hide the implementation details of a class',
              ],
              1,
            ),
            Question(
              'What is the interface keyword used for in C#?',
              [
                'To create an abstract class',
                'To declare a variable type',
                'To create a blueprint for classes, where methods have no implementation',
                'To define constants',
              ],
              2,
            ),
            Question(
              'Which of the following is a valid for loop syntax in C#?',
              [
                'for (i = 0; i < 10; i++) {}',
                'for (int i = 0; i < 10; i++) {}',
                'for int i = 0; i++; i < 10 {}',
                'for int i = 0; i < 10; ++i {}',
              ],
              1,
            ),
          ],
        ),
      ],
    ),
    // Add more categories with quiz sets and questions
    
    
  ];
}