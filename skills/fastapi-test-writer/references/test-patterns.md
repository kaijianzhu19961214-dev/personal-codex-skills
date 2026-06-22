# FastAPI And Python Test Patterns

Use these patterns when generating focused tests.

## unittest Function/Service Test

```python
import unittest
from unittest.mock import AsyncMock


class TestUserService(unittest.IsolatedAsyncioTestCase):
    async def test_should_return_user_when_user_exists(self) -> None:
        repository = AsyncMock()
        repository.get_user.return_value = User(id=1, name="Alice")

        result = await get_user(repository=repository, user_id=1)

        self.assertEqual(result.name, "Alice")
        repository.get_user.assert_awaited_once_with(1)
```

## FastAPI Route Test Shape

```python
import unittest
from fastapi.testclient import TestClient


class TestUserRoutes(unittest.TestCase):
    def setUp(self) -> None:
        self.client = TestClient(app)

    def tearDown(self) -> None:
        app.dependency_overrides.clear()

    def test_should_return_404_when_user_missing(self) -> None:
        response = self.client.get("/users/999")

        self.assertEqual(response.status_code, 404)
        self.assertEqual(response.json()["detail"], "User not found")
```

## Coverage Checklist

- Success path returns expected schema.
- Invalid input returns validation error.
- Missing entity returns 404 or project-specific error.
- Forbidden operation returns 403.
- External dependency failure is mapped to expected error.
- Database write path commits or rolls back as intended.
- Async service awaits dependencies.

## Avoid

- Real network calls.
- Real credentials.
- Sleeping in tests.
- Over-mocking the function under test.
- Assertions that duplicate implementation rather than behavior.

