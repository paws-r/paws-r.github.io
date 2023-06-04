<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_describe_operating_systems</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the operating systems that are supported by AWS OpsWorks Stacks

### Description

Describes the operating systems that are supported by AWS OpsWorks
Stacks.

### Usage

    opsworks_describe_operating_systems()

### Value

A list with the following syntax:

    list(
      OperatingSystems = list(
        list(
          Name = "string",
          Id = "string",
          Type = "string",
          ConfigurationManagers = list(
            list(
              Name = "string",
              Version = "string"
            )
          ),
          ReportedName = "string",
          ReportedVersion = "string",
          Supported = TRUE|FALSE
        )
      )
    )
