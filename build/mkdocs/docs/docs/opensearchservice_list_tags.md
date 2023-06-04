<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opensearchservice_list_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns all resource tags for an Amazon OpenSearch Service domain

### Description

Returns all resource tags for an Amazon OpenSearch Service domain. For
more information, see [Tagging Amazon OpenSearch Service
domains](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-awsresourcetagging.html).

### Usage

    opensearchservice_list_tags(ARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="opensearchservice_list_tags_:_ARN">ARN</code></td>
<td><p>[required] Amazon Resource Name (ARN) for the domain to view tags
for.</p></td>
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
