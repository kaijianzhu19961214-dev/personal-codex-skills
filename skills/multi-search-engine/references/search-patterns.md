# Search Patterns Reference

中文说明：这个参考文件用于复杂搜索任务。优先组合“关键词 + 限定符 + 时间/语言/站点”，不要只换同义词。

## Search Engine URL Templates

Replace `{keyword}` with URL-encoded query text.

### Chinese / 中文入口

| Engine | Template |
|--------|----------|
| Baidu | `https://www.baidu.com/s?wd={keyword}` |
| Bing CN | `https://cn.bing.com/search?q={keyword}&ensearch=0` |
| Bing INT | `https://cn.bing.com/search?q={keyword}&ensearch=1` |
| 360 | `https://www.so.com/s?q={keyword}` |
| Sogou | `https://sogou.com/web?query={keyword}` |
| Sogou WeChat | `https://wx.sogou.com/weixin?type=2&query={keyword}` |
| Toutiao | `https://so.toutiao.com/search?keyword={keyword}` |
| Jisilu | `https://www.jisilu.cn/explore/?keyword={keyword}` |

### International / 国际入口

| Engine | Template |
|--------|----------|
| Google | `https://www.google.com/search?q={keyword}` |
| Google HK | `https://www.google.com.hk/search?q={keyword}` |
| DuckDuckGo HTML | `https://duckduckgo.com/html/?q={keyword}` |
| Yahoo | `https://search.yahoo.com/search?p={keyword}` |
| Startpage | `https://www.startpage.com/sp/search?query={keyword}` |
| Brave | `https://search.brave.com/search?q={keyword}` |
| Ecosia | `https://www.ecosia.org/search?q={keyword}` |
| Qwant | `https://www.qwant.com/?q={keyword}` |
| WolframAlpha | `https://www.wolframalpha.com/input?i={keyword}` |

## Advanced Operators

| Operator | Example | Use |
|----------|---------|-----|
| `site:` | `site:docs.python.org asyncio` | Search inside a domain |
| `filetype:` | `filetype:pdf annual report` | Find specific document types |
| `""` | `"Pydantic v2"` | Exact phrase |
| `-` | `python -snake` | Exclude noisy term |
| `OR` | `FastAPI OR Starlette` | Include either term |
| `intitle:` | `intitle:"API reference"` | Title contains term |
| `inurl:` | `inurl:docs authentication` | URL contains term |

## Time Filters

Google-style filters:

| Parameter | Meaning |
|-----------|---------|
| `tbs=qdr:h` | Past hour |
| `tbs=qdr:d` | Past day |
| `tbs=qdr:w` | Past week |
| `tbs=qdr:m` | Past month |
| `tbs=qdr:y` | Past year |
| `tbs=cdr:1,cd_min:M/D/YYYY,cd_max:M/D/YYYY` | Custom range |

Brave-style filters:

| Parameter | Meaning |
|-----------|---------|
| `tf=pd` | Past day |
| `tf=pw` | Past week |
| `tf=pm` | Past month |
| `tf=py` | Past year |

## DuckDuckGo Bangs

| Bang | Destination |
|------|-------------|
| `!g` | Google |
| `!b` | Bing |
| `!gh` | GitHub |
| `!so` | Stack Overflow |
| `!w` | Wikipedia |
| `!yt` | YouTube |
| `!mdn` | MDN Web Docs |
| `!pypi` | PyPI |
| `!npm` | npm |

## Bilingual Query Expansion

Use Chinese and English variants when the topic may have different communities or terminology.

Examples:

- `AI Agent 记忆 检索 skill`
- `AI agent memory search skill`
- `FastAPI 性能 指标 SQLAlchemy 2.0`
- `FastAPI performance metrics SQLAlchemy 2.0`

## Evidence Rules

- Search engines discover sources; they do not prove claims.
- Prefer official docs, source repositories, standards, academic papers, government pages, and company announcements.
- If only secondary sources are available, state that limitation.
