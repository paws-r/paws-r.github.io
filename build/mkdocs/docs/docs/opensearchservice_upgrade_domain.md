<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opensearchservice_upgrade_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Allows you to either upgrade your Amazon OpenSearch Service domain or perform an upgrade eligibility check to a compatible version of OpenSearch or Elasticsearch

### Description

Allows you to either upgrade your Amazon OpenSearch Service domain or
perform an upgrade eligibility check to a compatible version of
OpenSearch or Elasticsearch.

### Usage

    opensearchservice_upgrade_domain(DomainName, TargetVersion,
      PerformCheckOnly, AdvancedOptions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opensearchservice_upgrade_domain_:_DomainName">DomainName</code></td>
<td><p>[required] Name of the OpenSearch Service domain that you want to
upgrade.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_upgrade_domain_:_TargetVersion">TargetVersion</code></td>
<td><p>[required] OpenSearch or Elasticsearch version to which you want
to upgrade, in the format Opensearch_X.Y or Elasticsearch_X.Y.</p></td>
</tr>
<tr class="odd">
<td><code
id="opensearchservice_upgrade_domain_:_PerformCheckOnly">PerformCheckOnly</code></td>
<td><p>When true, indicates that an upgrade eligibility check needs to
be performed. Does not actually perform the upgrade.</p></td>
</tr>
<tr class="even">
<td><code
id="opensearchservice_upgrade_domain_:_AdvancedOptions">AdvancedOptions</code></td>
<td><p>Only supports the <code>override_main_response_version</code>
parameter and not other advanced options. You can only include this
option when upgrading to an OpenSearch version. Specifies whether the
domain reports its version as 7.10 so that it continues to work with
Elasticsearch OSS clients and plugins.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UpgradeId = "string",
      DomainName = "string",
      TargetVersion = "string",
      PerformCheckOnly = TRUE|FALSE,
      AdvancedOptions = list(
        "string"
      ),
      ChangeProgressDetails = list(
        ChangeId = "string",
        Message = "string"
      )
    )

### Request syntax

    svc$upgrade_domain(
      DomainName = "string",
      TargetVersion = "string",
      PerformCheckOnly = TRUE|FALSE,
      AdvancedOptions = list(
        "string"
      )
    )
