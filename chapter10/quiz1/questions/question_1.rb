# Write a program that keeps a list of todos. It should:
# * Have two classes:
#   * `Todo`
#     * Has two methods:
#       * `initialize`: Creates a new todo object. Takes a string as a
#         parameter and stores it on the todo object.
#       * `text`: Takes no parameters. Returns the string that was
#         stored when the todo object was created.
#   * `TodoList`
#     * Has three methods:
#       * `initialize`: Creates a new todo list object. Takes no parameters.
#       * `add`: Takes a todo object as a parameter.  Stores it on the
#         todo list object.
#       * `print`: Takes no parameters.  Creates a string of all the
#         stored todos, one per line.  Each line should start with a
#         `* `.  `puts`es the string.
#         * e.g.
#           ```
#           * get milk
#           * get the papers
#           ```

# * Note: When you run the automated tests, make sure to remove from
#   the top level of the file any calls to any methods.

class Todo
  def initialize(string)
    @string = string
  end

  def text
    return @string
  end
end

class TodoList
  def initialize
    @list = []
  end

  def add(todo)
    @list.push(todo.text)
  end

  def print
    @all_tasks = String.new
    @list.each { |item| @all_tasks << "* #{item}\n" }
    puts @all_tasks
  end
end

# my_list = TodoList.new

# task_1 = Todo.new("Buy bread")
# task_2 = Todo.new("Clean house")
# task_3 = Todo.new("Call Mam")

# my_list.add(task_1)
# my_list.add(task_2)
# my_list.add(task_3)

# my_list.print