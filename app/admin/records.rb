ActiveAdmin.register Record do
form do |f|
  f.inputs do
    f.input :header
    f.input :text, :input_html => {:class => "ckeditor"}
    f.input :tag_list, :hint => 'Comma separated'
  end
  f.buttons
end  
end
