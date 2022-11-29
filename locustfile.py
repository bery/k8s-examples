import time
from locust import HttpUser, task, between

class QuickstartUser(HttpUser):
    wait_time = between(1, 3)
    
    @task
    def get_homepage(self):
        self.client.get("/")
