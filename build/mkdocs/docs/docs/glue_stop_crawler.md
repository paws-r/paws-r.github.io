<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_stop_crawler</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## If the specified crawler is running, stops the crawl

### Description

If the specified crawler is running, stops the crawl.

### Usage

    glue_stop_crawler(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_stop_crawler_:_Name">Name</code></td>
<td><p>[required] Name of the crawler to stop.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_crawler(
      Name = "string"
    )
