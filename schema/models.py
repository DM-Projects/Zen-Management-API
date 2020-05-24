from django.db import models

# Create your models here.

class Project(models.Model):
    project_name = models.CharField(max_length=30)
    creation_date = models.DateTimeField("date created")
    deadline = models.DateTimeField('project deadline')
    
    def __str__(self):
        return self.project_name


class User(models.Model):
    username = models.CharField(max_length=20)
    first_name = models.CharField(max_length=20)
    last_name = models.CharField(max_length=20)
    password = models.CharField(max_length=200)
    # User can have multiple projects and a project can have multiple users
    projects = models.ManyToManyField(Project)

    def __str__(self):
        return self.username