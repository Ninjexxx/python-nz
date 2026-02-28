from api.client.api_client import APIClient

BASE_URL = "https://jsonplaceholder.typicode.com"

client = APIClient(BASE_URL)

def test_get_single_post():
    response = client.get("/posts/1")

    assert response.status_code == 200

    data = response.json()

    assert data["id"] == 1
    assert "userId" in data
    assert isinstance(data["title"], str)

if __name__ == "__main__":
    test_get_single_post()
    print("Single post test executed successfully.")