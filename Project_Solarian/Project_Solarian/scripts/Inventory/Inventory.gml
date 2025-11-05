function Inventory() constructor {
	items = [];
	count = 0;
	
	set_item = function(_name, _quantity, _sprite) {
		array_push(items, {
			name: _name, quantity: _quantity, sprite: _sprite,
		});
	}
	
	add_item = function(_name, _quantity, _sprite) {
		var index = find_item(_name);
		if (index >= 0)
			items[index].quantity += _quantity;
		else {
			set_item(_name, _quantity, _sprite);
			count++;
		}
	}
	
	subtract_item = function(_name, _quantity) {
		var index = find_item(_name);
		if (index >= 0) {
			if (has_item(_name, _quantity))
				items[index].quantity -= _quantity;
		}
	}
	
	remove_item = function(_index) {
		array_delete(items, _index, 1);
		count--;
	}
	
	get = function() {
		return items;
	}
	
	get_count = function() {
		return count;
	}
	
	has_item = function(_name, _quantity) {
		var index = find_item(_name);
		if (index >= 0)
			return items[index].quantity >= _quantity;
		return false;
	}
	
	// helper method
	find_item = function(_name) {
		for (var i = 0; i < array_length(items); i++) {
			if (_name == items[i].name)
				return i;
		}
		return -1;
	}
	
	toString = function() {
		return json_stringify(items);
	}
}