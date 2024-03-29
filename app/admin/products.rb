ActiveAdmin.register Product do
form do |f|
  f.inputs do
    f.input :name
    f.input :description, :input_html => {:class => "ckeditor"}
    f.input :count
    f.input :price
    f.input :image, :as => :file
  end
  f.buttons
end  
end
