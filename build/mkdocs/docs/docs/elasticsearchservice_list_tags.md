<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticsearchservice_list_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns all tags for the given Elasticsearch domain

### Description

Returns all tags for the given Elasticsearch domain.

### Usage

    elasticsearchservice_list_tags(ARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="elasticsearchservice_list_tags_:_ARN">ARN</code></td>
<td><p>[required] Specify the <code>ARN</code> for the Elasticsearch
domain to which the tags are attached that you want to view.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TagList = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$list_tags(
      ARN = "string"
    )
