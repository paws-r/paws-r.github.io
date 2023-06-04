<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directconnect_describe_locations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the Direct Connect locations in the current Amazon Web Services Region

### Description

Lists the Direct Connect locations in the current Amazon Web Services
Region. These are the locations that can be selected when calling
`create_connection` or `create_interconnect`.

### Usage

    directconnect_describe_locations()

### Value

A list with the following syntax:

    list(
      locations = list(
        list(
          locationCode = "string",
          locationName = "string",
          region = "string",
          availablePortSpeeds = list(
            "string"
          ),
          availableProviders = list(
            "string"
          ),
          availableMacSecPortSpeeds = list(
            "string"
          )
        )
      )
    )
