<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opensearchservice_add_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attaches tags to an existing Amazon OpenSearch Service domain

### Description

Attaches tags to an existing Amazon OpenSearch Service domain. Tags are
a set of case-sensitive key-value pairs. A domain can have up to 10
tags. For more information, see [Tagging Amazon OpenSearch Service
domains](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-awsresourcetagging.html).

### Usage

    opensearchservice_add_tags(ARN, TagList)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="opensearchservice_add_tags_:_ARN">ARN</code></td>
<td><p>[required] Amazon Resource Name (ARN) for the OpenSearch Service
domain to which you want to attach resource tags.</p></td>
</tr>
<tr class="even">
<td><code id="opensearchservice_add_tags_:_TagList">TagList</code></td>
<td><p>[required] List of resource tags.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$add_tags(
      ARN = "string",
      TagList = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
