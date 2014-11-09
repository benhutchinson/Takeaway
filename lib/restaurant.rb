class Restaurant

attr_accessor :menu_list
attr_reader :name

def initialize(name)
  @name = name
  @menu_list = []
end

def has_menu?
  true if menu_list.count > 0
end

def add_menu(menu)
  menu_list << menu
end

def remove_menu(menu)
  menu_list.delete(menu)
end

end