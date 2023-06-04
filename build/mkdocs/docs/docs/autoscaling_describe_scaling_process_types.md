<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_describe_scaling_process_types</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the scaling process types for use with the ResumeProcesses and SuspendProcesses APIs

### Description

Describes the scaling process types for use with the `resume_processes`
and `suspend_processes` APIs.

### Usage

    autoscaling_describe_scaling_process_types()

### Value

A list with the following syntax:

    list(
      Processes = list(
        list(
          ProcessName = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # This example describes the Auto Scaling process types.
    svc$describe_scaling_process_types()

    ## End(Not run)
