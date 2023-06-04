<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_get_directory_limits</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Obtains directory limit information for the current Region

### Description

Obtains directory limit information for the current Region.

### Usage

    directoryservice_get_directory_limits()

### Value

A list with the following syntax:

    list(
      DirectoryLimits = list(
        CloudOnlyDirectoriesLimit = 123,
        CloudOnlyDirectoriesCurrentCount = 123,
        CloudOnlyDirectoriesLimitReached = TRUE|FALSE,
        CloudOnlyMicrosoftADLimit = 123,
        CloudOnlyMicrosoftADCurrentCount = 123,
        CloudOnlyMicrosoftADLimitReached = TRUE|FALSE,
        ConnectedDirectoriesLimit = 123,
        ConnectedDirectoriesCurrentCount = 123,
        ConnectedDirectoriesLimitReached = TRUE|FALSE
      )
    )

### Request syntax

    svc$get_directory_limits()
