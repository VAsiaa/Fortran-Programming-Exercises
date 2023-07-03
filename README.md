# Fortran-Programming-Exercises
Fortran Programming Exercises that i made in SPB PU
<!DOCTYPE html>
<html>
 <head>
  <meta charset="utf-8">
  <link href=”style.css” rel=”stylesheet”>
  <title></title>
  <style>
  hr {
    border: none; /* Убираем границу */
    background-color: gray; /* Цвет линии */
    height: 2px; /* Толщина линии */
    }
  p1 {
    margin-left: 40px;
  }
  h3{
    text-align: center;
    margin-top: 20px;
    margin-bottom: 10px;
  }

  </style>
 </head>
 <body>
  <h2>Практические задания по предмету "Алгоритмизация и программирование"</h2>
  <p1>Данный предмет был направлени  на освоение созданной инструментальной среды разработки и изучения работы со стандартными стуктурами данных. Основной задачей данного предмета является приобретение студентом необходимых знаний и навыков для эффективного написания алгоритмов</p1>

  <p1>Для выполнения поставленных задач была создана следующая инструментальная платформа:</p1>
  <ul>
      <li>Операционная система (Дистрибутив) - Debian GNU/Linux 11 - Official amd64 </li>
      <li>Менеджер окон - i3</li>
      <li>Тектовый редактор - Vim</li>
      <li>Компилятор - GFortran</li>
   </ul>
     <p1>Во всех проектах была использованна следующая структура программы:</p1>

  <ol>
    <li>Ввод данных</li>
    <li>Вывод данных</li>
    <li>Обработка данных</li>
    <li>Вывод обработанных данных</li>
  </ol>
  <h3>Немного теории</h3>
  <p1><u>Метод пошаговой детализации </u> - реализует нисходящий подход к программированию и предполагает пошаговую разработку алгоритма.</p1>

  <p1>С использованием метода пошаговой детализации разработку алгоритмов выполняют поэтапно. На первом этапе описывают решение поставленной задачи «по крупному», выделяя подзадачи, которые необходимо решить. На следующем – аналогично описывают решение подзадач, формулируя уже подзадачи следующего уровня. Процесс продолжают, пока не доходят до подзадач, алгоритмы решения которых очевидны. При этом, описывая решение каждой задачи, желательно использовать не более одной-двух конструкций, таких как цикл или ветвление, чтобы четче представить себе структуру программы.</p1>

<p1><u>Для определения эффективносмти кода</u> введем следующие относительные показатели</p1>

  <ul>
      <li>Prod (code productivity) - эффективность кода</li>
      <li>Perf (code performance) - производительность кода</li>
      <li>Compl (code complexity) - Сложность кода</li>
      <li>T - время выполнения участнка кода (мс)</li>
  </ul>

  <center><p1>Compl = (Число строк, Цикломатическая сложность)</p1></center>

  <center><p1>Perf = 1/t </p1></center>

  <center><p1>Prod = perf/Compl </p1></center>

  <p1><u>Регулярный доступ к памяти  </u> - осуществляется перебором элементов массива по порядку (перебор элементов массива или иной другой структуры последовательно так как элементы распологаются в оперативной памяти).</p1>

  <p1>В оперативной памяти двумерные массивы распологаются следующим образом: </p1>
  <center><img src="pics/pic2.png" alt="Расположение двумерного массива в оперативной памяти"></center>

  <p1>Очень важно работать с данными используя регуляриный доступ к памяти, поскольку такой подход исколючает "Хеш-промахи" и позволяет легче задействовать векторизацию (О которой насписанно ниже)</p1>

  <p1><u>Основы векторизации кода </u> </p1>

  <p1>Современные процессоры поддерживают такие инструкции как AVX, AVX2, AVX512. Данные инструкции разработанны для веркторизации вычислений что в свою очередь увеличивает производительность системы</p1>

  <p1>Пример Архитектуры SIMD (Single Instruction Stream & Multiple Data Stream) до использования векторизации и после</p1>
 <center><img src="pics/pic3.png" alt="Пример Архитектуры SIMD"></center>

  <p1>Порядок векторизации:</p1>
  <ol>
    <li>Формирование скалярных данных вектора (Запись данных в векторные регистры), задействуется инструкция из расширенного набора инструкция</li>
    <li>Применение к векторам векторных операций (Используется векторная АЛУ или ФПЮ и векторные регистры)</li>
    <li>Сохранение результата в векторные регистры, а затем в оперативную память</li>
  </ol>

  <hr>
  <h2>Практические задания по предмету "Алгоритмы и стуктуры данных"</h2>
 
  <p1>Рассмотрим следующие структуры данных</p1>


<hr>
 </body>
</html>




