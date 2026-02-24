import requests

BASE_URL = "https://jsonplaceholder.typicode.com"

def test_get_posts():
    response = requests.get(f"{BASE_URL}/posts")

    print("Status Code:", response.status_code)

    assert response.status_code == 200

    data = response.json()

    print("First Post:", data[0])

    assert isinstance(data, list)
    assert len(data) > 0


def test_invalid_endpoint():
    response = requests.get(f"{BASE_URL}/invalid-endpoint")

    print("Status Code:", response.status_code)

    assert response.status_code == 404

if __name__ == "__main__":
    test_get_posts()
    test_invalid_endpoint()
    print("All tests executed.")