<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticsearchservice_add_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attaches tags to an existing Elasticsearch domain

### Description

Attaches tags to an existing Elasticsearch domain. Tags are a set of
case-sensitive key value pairs. An Elasticsearch domain may have up to
10 tags. See <a
href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/#es-managedomains-awsresorcetagging"
target="_blank">Tagging Amazon Elasticsearch Service Domains for more
information.</a>

### Usage

    elasticsearchservice_add_tags(ARN, TagList)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="elasticsearchservice_add_tags_:_ARN">ARN</code></td>
<td><p>[required] Specify the <code>ARN</code> for which you want to add
the tags.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticsearchservice_add_tags_:_TagList">TagList</code></td>
<td><p>[required] List of <code>Tag</code> that need to be added for the
Elasticsearch domain.</p></td>
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
