from locust import HttpLocust, TaskSet, task
import time


class FormVideoExitUserTask(TaskSet):

    @task(1)
    def task1(self):
        self.client.get("/new")
        time.sleep(1)
        self.client.post("/submit_email")
        time.sleep(1)
        self.client.post("/watch_video")
        time.sleep(1)
        self.client.post("/exit")


class VideoExitUserTask(TaskSet):

    @task(1)
    def task1(self):
        self.client.get("/new")
        time.sleep(1)
        self.client.post("/watch_video")
        time.sleep(1)
        self.client.post("/exit")


class FormExitUserTask(TaskSet):

    @task(1)
    def task1(self):
        self.client.get("/new")
        time.sleep(1)
        self.client.post("/submit_email")
        time.sleep(1)
        self.client.post("/exit")


class NoActionUserTask(TaskSet):

    @task(1)
    def task1(self):
        self.client.get("/new")
        time.sleep(1)
        self.client.post("/exit")


class NoActionUser(HttpLocust):
    min_wait = 60000
    max_wait = 61000
    task_set = NoActionUserTask


class FormExitUser(HttpLocust):
    min_wait = 60000
    max_wait = 61000
    task_set = FormExitUserTask


class VideoExitUser(HttpLocust):
    min_wait = 60000
    max_wait = 61000
    task_set = VideoExitUserTask


class FormVideoExitUser(HttpLocust):
    min_wait = 60000
    max_wait = 61000
    task_set = FormVideoExitUserTask
