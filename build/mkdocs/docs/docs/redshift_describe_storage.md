<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_describe_storage</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns account level backups storage size and provisional storage

### Description

Returns account level backups storage size and provisional storage.

### Usage

    redshift_describe_storage()

### Value

A list with the following syntax:

    list(
      TotalBackupSizeInMegaBytes = 123.0,
      TotalProvisionedStorageInMegaBytes = 123.0
    )
