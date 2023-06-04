<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_describe_region_settings</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the current service opt-in settings for the Region

### Description

Returns the current service opt-in settings for the Region. If service
opt-in is enabled for a service, Backup tries to protect that service's
resources in this Region, when the resource is included in an on-demand
backup or scheduled backup plan. Otherwise, Backup does not try to
protect that service's resources in this Region.

### Usage

    backup_describe_region_settings()

### Value

A list with the following syntax:

    list(
      ResourceTypeOptInPreference = list(
        TRUE|FALSE
      ),
      ResourceTypeManagementPreference = list(
        TRUE|FALSE
      )
    )

### Request syntax

    svc$describe_region_settings()
