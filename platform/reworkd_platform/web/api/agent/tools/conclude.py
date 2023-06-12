from reworkd_platform.web.api.agent.model_settings import ModelSettings
from reworkd_platform.web.api.agent.tools.tool import Tool


class Conclude(Tool):
    description = "Use when there is nothing else to do. The task has been concluded."

    def __init__(self, model_settings: ModelSettings):
        super().__init__(model_settings)

<<<<<<< HEAD
    async def call(self, goal: str, task: str, input_str: str) -> str:
        return "Task execution concluded."
=======
    def call(self, goal: str, task: str, input_str: str) -> str:
        return ""
>>>>>>> parent of e5d3a8c (🛠️ Tools selector (#569))
