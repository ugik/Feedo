module PostsHelper

def get_ext(file_name)
	if file_name!=nil and file_name.index('.')!=nil
		@ext = file_name[file_name.index('.')+1, 3]   # grab extension
	else
		@ext = nil
	end
	return @ext
end

end
