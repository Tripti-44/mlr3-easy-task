library(mlr3)
library(mlr3oml)

t_iris <- otsk(59)
t_iris
t_iris$task_type
t_iris$target_names
t_iris$feature_names

task_iris <- as_task(t_iris)
print(task_iris)

task_iris$data()[1:6, ]
task_iris$class_names
task_iris$nrow
task_iris$ncol
table(task_iris$data()$class)
sum(is.na(task_iris$data()))

t_bank <- otsk(14965)
t_bank
t_bank$task_type
t_bank$target_names
t_bank$feature_names

task_bank <- as_task(t_bank)
print(task_bank)

task_bank$data()[1:6, ]
task_bank$class_names
task_bank$nrow
task_bank$ncol
table(task_bank$data()$Class)
round(prop.table(table(task_bank$data()$Class)) * 100, 1)
sum(is.na(task_bank$data()))
