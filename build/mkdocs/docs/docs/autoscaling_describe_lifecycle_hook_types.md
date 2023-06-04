<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>autoscaling_describe_lifecycle_hook_types</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the available types of lifecycle hooks

### Description

Describes the available types of lifecycle hooks.

The following hook types are supported:

-   `autoscaling:EC2_INSTANCE_LAUNCHING`

-   `autoscaling:EC2_INSTANCE_TERMINATING`

### Usage

    autoscaling_describe_lifecycle_hook_types()

### Value

A list with the following syntax:

    list(
      LifecycleHookTypes = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This example describes the available lifecycle hook types.
    svc$describe_lifecycle_hook_types()

    ## End(Not run)
