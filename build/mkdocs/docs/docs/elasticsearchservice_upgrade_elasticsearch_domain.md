<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticsearchservice_upgrade_elasticsearch_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Allows you to either upgrade your domain or perform an Upgrade eligibility check to a compatible Elasticsearch version

### Description

Allows you to either upgrade your domain or perform an Upgrade
eligibility check to a compatible Elasticsearch version.

### Usage

    elasticsearchservice_upgrade_elasticsearch_domain(DomainName,
      TargetVersion, PerformCheckOnly)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticsearchservice_upgrade_elasticsearch_domain_:_DomainName">DomainName</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="elasticsearchservice_upgrade_elasticsearch_domain_:_TargetVersion">TargetVersion</code></td>
<td><p>[required] The version of Elasticsearch that you intend to
upgrade the domain to.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticsearchservice_upgrade_elasticsearch_domain_:_PerformCheckOnly">PerformCheckOnly</code></td>
<td><p>This flag, when set to True, indicates that an Upgrade
Eligibility Check needs to be performed. This will not actually perform
the Upgrade.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DomainName = "string",
      TargetVersion = "string",
      PerformCheckOnly = TRUE|FALSE,
      ChangeProgressDetails = list(
        ChangeId = "string",
        Message = "string"
      )
    )

### Request syntax

    svc$upgrade_elasticsearch_domain(
      DomainName = "string",
      TargetVersion = "string",
      PerformCheckOnly = TRUE|FALSE
    )
