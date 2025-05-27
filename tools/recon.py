import requests
social_media_links = [
    "https://www.facebook.com",
    "https://www.instagram.com",
    "https://twitter.com",
    "https://www.tiktok.com",
    "https://www.linkedin.com",
    "https://www.snapchat.com",
    "https://www.pinterest.com",
    "https://www.reddit.com",
    "https://www.youtube.com",
    "https://www.whatsapp.com",
    "https://discord.com",
    "https://www.tumblr.com",
    "https://www.clubhouse.com",
    "https://telegram.org",
    "https://medium.com",
    "https://www.twitch.tv",
    "https://www.quora.com",
    "https://vk.com"
]
print("USER NOT FOUND 'doesnt show'")
usr = input("User To Hunt:  ")
for link in social_media_links:
    check = requests.get(f"{link}/{usr}")
    if check.status_code == 200:
        print("[200]" + link +"/" + usr)
