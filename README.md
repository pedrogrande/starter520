# notes

1. Idea
2. Problem
3. Problem validation
4. Solution design



rails g scaffold Canvas --force-plural name slug:uniq
rails g model CanvasUser canvas:belongs_to user:belongs_to
rails g scaffold CanvasItemType name description:text question:text
rails g scaffold CanvasItem canvas_item_type:belongs_to canvas:belongs_to user:belongs_to name description:text
