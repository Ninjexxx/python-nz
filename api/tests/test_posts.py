from api.client.api_client import APIClient

BASE_URL = "https://jsonplaceholder.typicode.com"

client = APIClient(BASE_URL)

def test_get_posts():
    response = client.get("/posts")

    assert response.status_code == 200

    data = response.json()

    assert isinstance(data, list)
    assert len(data) > 0
    assert "userId" in data[0]
    assert "title" in data[0]

def test_invalid_endpoint():
    response = client.get("/invalid-endpoint")

    assert response.status_code == 404

if __name__ == "__main__":
    test_get_posts()
    test_invalid_endpoint()
    print("API tests executed successfully.")

def test_create_post():
    payload = {
        "userId": 1,
        "title": "Arthur NZ Journey",
        "body": "Building QA automation skills."
    }

    response = client.post("/posts", payload)

    assert response.status_code == 201

    data = response.json()

    assert data["title"] == payload["title"]
    assert data["body"] == payload["body"]
    assert data["userId"] == payload["userId"]
    assert "id" in data
    assert isinstance(data["id"], int)