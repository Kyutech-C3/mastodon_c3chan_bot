from datetime import datetime
from typing import List, Optional

class User:
    id: int
    username: str
    acct: str
    display_name: str
    locked: bool
    bot: bool
    discoverable: bool
    group: bool
    created_at: datetime
    note: str
    url: str
    avatar: str
    avatar_static: str
    header: str
    header_static: str
    followers_count: int
    following_count: int
    statuses_count: int
    last_status_at: datetime
    emojis: List[dict]
    fields: List[dict]

class Status:
    id: int
    created_at: datetime
    uri: str
    url: str
    account: User
    in_reply_to_id: str
    in_reply_to_account_id: str
    reblog: dict
    content: str
    sensitive: bool
    spoiler_text: str
    visibility: str
    language: str
    replies_count: int
    reblogs_count: int
    favourites_count: int
    application: Optional[dict]
    media_attachments: List[dict]
    mentions: List[User]
    tags: List[dict]
    emojis: List[dict]
    card: Optional[dict]
    poll: Optional[dict]
