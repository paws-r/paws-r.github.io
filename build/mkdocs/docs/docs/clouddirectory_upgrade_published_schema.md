<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_upgrade_published_schema</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Upgrades a published schema under a new minor version revision using the current contents of DevelopmentSchemaArn

### Description

Upgrades a published schema under a new minor version revision using the
current contents of `DevelopmentSchemaArn`.

### Usage

    clouddirectory_upgrade_published_schema(DevelopmentSchemaArn,
      PublishedSchemaArn, MinorVersion, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_upgrade_published_schema_:_DevelopmentSchemaArn">DevelopmentSchemaArn</code></td>
<td><p>[required] The ARN of the development schema with the changes
used for the upgrade.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_upgrade_published_schema_:_PublishedSchemaArn">PublishedSchemaArn</code></td>
<td><p>[required] The ARN of the published schema to be
upgraded.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_upgrade_published_schema_:_MinorVersion">MinorVersion</code></td>
<td><p>[required] Identifies the minor version of the published schema
that will be created. This parameter is NOT optional.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_upgrade_published_schema_:_DryRun">DryRun</code></td>
<td><p>Used for testing whether the Development schema provided is
backwards compatible, or not, with the publish schema provided by the
user to be upgraded. If schema compatibility fails, an exception would
be thrown else the call would succeed. This parameter is optional and
defaults to false.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UpgradedSchemaArn = "string"
    )

### Request syntax

    svc$upgrade_published_schema(
      DevelopmentSchemaArn = "string",
      PublishedSchemaArn = "string",
      MinorVersion = "string",
      DryRun = TRUE|FALSE
    )
