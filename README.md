# GET /myparser/index

Returns calendar for [http://www.weeia.p.lodz.pl/](http://www.weeia.p.lodz.pl/) in `.ics` format.

# Resource URL

`http://localhost:3000/myparser/index`

## Resource Information

|                |                          	|                         
|----------------|-------------------------------|
|Response formats|`ics` config           |
|Requires authentication?         |No            |



## Parameters
|     Name           |Required                          |Description                         | Example |
|----------------|-------------------------------|-----------------------------|------------------|
|year|required            | A year for which calendar will be generated                      | 2019
|month          |required             |A month for which calendar will be generated           |12

# Example Request

`GET localhost:3000/myparser/index.json?year=2019&month=12`

# Example Response

```
BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//Acme Widgets\, Inc.//NONSGML ExportToCalendar//EN
CALSCALE:GREGORIAN
METHOD:PUBLISH
BEGIN:VEVENT
DTSTAMP:20191110T171401Z
UID:7c4dbb97-1e85-44ec-a679-b45b3eb4c24e
DTSTART:20191206T000000
DTEND:20191206T235959
DESCRIPTION:First Step to Nobel Prize
SUMMARY:First Step to Nobel Prize
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20191110T171401Z
UID:62bbdf91-9f44-4dc6-b390-448a53525441
DTSTART:20191209T000000
DTEND:20191209T235959
DESCRIPTION:First Step to Fields Medal
SUMMARY:First Step to Fields Medal
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20191110T171401Z
UID:d44a7f88-8dcb-481e-8e93-81ecdda97bdf
DTSTART:20191211T000000
DTEND:20191211T235959
DESCRIPTION:Fascynująca Fizyka - poziom ponadpodstawowy
SUMMARY:Fascynująca Fizyka - poziom ponadpodstawowy
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20191110T171401Z
UID:66660976-8d02-4645-91b7-35af23312877
DTSTART:20191216T000000
DTEND:20191216T235959
DESCRIPTION:Matura próbna Matematyka podstawowa
SUMMARY:Matura próbna Matematyka podstawowa
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20191110T171401Z
UID:596b63d5-51ce-4edc-b481-7fb8c132d74e
DTSTART:20191217T000000
DTEND:20191217T235959
DESCRIPTION:Matura próbna Matematyka rozszerzona
SUMMARY:Matura próbna Matematyka rozszerzona
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20191110T171401Z
UID:d7aefca5-725d-492b-836f-419c56738811
DTSTART:20191218T000000
DTEND:20191218T235959
DESCRIPTION:Matura próbna Fizyka rozszerzona
SUMMARY:Matura próbna Fizyka rozszerzona
END:VEVENT
BEGIN:VEVENT
DTSTAMP:20191110T171401Z
UID:0216e710-78bb-4305-86ad-0cd286e106e6
DTSTART:20191219T000000
DTEND:20191219T235959
DESCRIPTION:Matura próbna Chemia rozszerzona
SUMMARY:Matura próbna Chemia rozszerzona
END:VEVENT
END:VCALENDAR
```

