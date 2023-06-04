<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_upgrade_applied_schema</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Upgrades a single directory in-place using the PublishedSchemaArn with schema updates found in MinorVersion

### Description

Upgrades a single directory in-place using the `PublishedSchemaArn` with
schema updates found in `MinorVersion`. Backwards-compatible minor
version upgrades are instantaneously available for readers on all
objects in the directory. Note: This is a synchronous API call and
upgrades only one schema on a given directory per call. To upgrade
multiple directories from one schema, you would need to call this API on
each directory.

### Usage

    clouddirectory_upgrade_applied_schema(PublishedSchemaArn, DirectoryArn,
      DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_upgrade_applied_schema_:_PublishedSchemaArn">PublishedSchemaArn</code></td>
<td><p>[required] The revision of the published schema to upgrade the
directory to.</p></td>
</tr>
<tr class="even">
<td><code
id="clouddirectory_upgrade_applied_schema_:_DirectoryArn">DirectoryArn</code></td>
<td><p>[required] The ARN for the directory to which the upgraded schema
will be applied.</p></td>
</tr>
<tr class="odd">
<td><code
id="clouddirectory_upgrade_applied_schema_:_DryRun">DryRun</code></td>
<td><p>Used for testing whether the major version schemas are backward
compatible or not. If schema compatibility fails, an exception would be
thrown else the call would succeed but no changes will be saved. This
parameter is optional.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UpgradedSchemaArn = "string",
      DirectoryArn = "string"
    )

### Request syntax

    svc$upgrade_applied_schema(
      PublishedSchemaArn = "string",
      DirectoryArn = "string",
      DryRun = TRUE|FALSE
    )
