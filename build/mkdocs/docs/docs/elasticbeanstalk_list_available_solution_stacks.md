<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticbeanstalk_list_available_solution_stacks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of the available solution stack names, with the public version first and then in reverse chronological order

### Description

Returns a list of the available solution stack names, with the public
version first and then in reverse chronological order.

### Usage

    elasticbeanstalk_list_available_solution_stacks()

### Value

A list with the following syntax:

    list(
      SolutionStacks = list(
        "string"
      ),
      SolutionStackDetails = list(
        list(
          SolutionStackName = "string",
          PermittedFileTypes = list(
            "string"
          )
        )
      )
    )

### Examples

    ## Not run: 
    # The following operation lists solution stacks for all currently
    # available platform configurations and any that you have used in the
    # past:
    svc$list_available_solution_stacks()

    ## End(Not run)
