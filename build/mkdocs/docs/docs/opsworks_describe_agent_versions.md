<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_describe_agent_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the available AWS OpsWorks Stacks agent versions

### Description

Describes the available AWS OpsWorks Stacks agent versions. You must
specify a stack ID or a configuration manager. `describe_agent_versions`
returns a list of available agent versions for the specified stack or
configuration manager.

### Usage

    opsworks_describe_agent_versions(StackId, ConfigurationManager)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworks_describe_agent_versions_:_StackId">StackId</code></td>
<td><p>The stack ID.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_describe_agent_versions_:_ConfigurationManager">ConfigurationManager</code></td>
<td><p>The configuration manager.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AgentVersions = list(
        list(
          Version = "string",
          ConfigurationManager = list(
            Name = "string",
            Version = "string"
          )
        )
      )
    )

### Request syntax

    svc$describe_agent_versions(
      StackId = "string",
      ConfigurationManager = list(
        Name = "string",
        Version = "string"
      )
    )
