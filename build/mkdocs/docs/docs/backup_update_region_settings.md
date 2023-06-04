<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_update_region_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the current service opt-in settings for the Region

### Description

Updates the current service opt-in settings for the Region. If
service-opt-in is enabled for a service, Backup tries to protect that
service's resources in this Region, when the resource is included in an
on-demand backup or scheduled backup plan. Otherwise, Backup does not
try to protect that service's resources in this Region. Use the
`describe_region_settings` API to determine the resource types that are
supported.

### Usage

    backup_update_region_settings(ResourceTypeOptInPreference,
      ResourceTypeManagementPreference)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_update_region_settings_:_ResourceTypeOptInPreference">ResourceTypeOptInPreference</code></td>
<td><p>Updates the list of services along with the opt-in preferences
for the Region.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_update_region_settings_:_ResourceTypeManagementPreference">ResourceTypeManagementPreference</code></td>
<td><p>Enables or disables full Backup management of backups for a
resource type. To enable full Backup management for DynamoDB along with
<a
href="https://docs.aws.amazon.com/aws-backup/latest/devguide/advanced-ddb-backup.html">Backup's
advanced DynamoDB backup features</a>, follow the procedure to <a
href="https://docs.aws.amazon.com/aws-backup/latest/devguide/advanced-ddb-backup.html#advanced-ddb-backup-enable-cli">enable
advanced DynamoDB backup programmatically</a>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_region_settings(
      ResourceTypeOptInPreference = list(
        TRUE|FALSE
      ),
      ResourceTypeManagementPreference = list(
        TRUE|FALSE
      )
    )
