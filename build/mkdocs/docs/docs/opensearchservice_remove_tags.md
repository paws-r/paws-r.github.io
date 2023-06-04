<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opensearchservice_remove_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the specified set of tags from an Amazon OpenSearch Service domain

### Description

Removes the specified set of tags from an Amazon OpenSearch Service
domain. For more information, see [Tagging Amazon OpenSearch Service
domains](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/#managedomains-awsresorcetagging).

### Usage

    opensearchservice_remove_tags(ARN, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="opensearchservice_remove_tags_:_ARN">ARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the domain from
which you want to delete the specified tags.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_remove_tags_:_TagKeys">TagKeys</code></td>
<td><p>[required] The list of tag keys to remove from the
domain.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$remove_tags(
      ARN = "string",
      TagKeys = list(
        "string"
      )
    )
