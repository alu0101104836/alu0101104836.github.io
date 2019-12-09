Node = Struct.new(:value,:next_node,:prev_node)

class Lista

  include Enumerable	
  attr_accessor :head, :tail


  def initialize

	  @head = nil
	  @tail = nil
  end

  def to_l()
    "(#{@head})"
  end

  def to_t()
    "(#{@tail})"
  end

  def insert_head(dato)	  
    
	nodo = Node.new(dato,nil,nil)

	if(@head == nil)
		@head = nodo
		@tail = nodo

	else
		 @head.prev_node = nodo
		 nodo.next_node = @head
		 @head = nodo
	end
  end

  def insert_tail(dato)

	  nodo = Node.new(dato,nil,nil)

	  if(@tail ==nil)
		  @tail=nodo
		  @head=nodo
	  else
		  @tail.next_node=nodo
		  @nodo.prev_node=@tail
		  @tail=nodo
	  end

  end

  def get_head

	  aux = @head
	  @head = @head.next_node
	  aux
  end

  def get_tail
	  aux = @tail
	  @tail = @tail.prev_node
	  aux
  end

  def empty?

	  @head == nil
	  @tail == nil
  end

  def to_s
	  it = @head
	  while it != nil
		  puts it.value.to_s
		  it = it.next_node
	  end
  end

  def each

	  it = @head

	  while it != nil do
		  yield it.value
		  it = it.next_node
	  end

  end


end