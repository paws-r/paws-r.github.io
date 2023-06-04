<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicediscovery_get_operation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about any operation that returns an operation ID in the response, such as a CreateService request

### Description

Gets information about any operation that returns an operation ID in the
response, such as a `create_service` request.

To get a list of operations that match specified criteria, see
`list_operations`.

### Usage

    servicediscovery_get_operation(OperationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicediscovery_get_operation_:_OperationId">OperationId</code></td>
<td><p>[required] The ID of the operation that you want to get more
information about.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Operation = list(
        Id = "string",
        Type = "CREATE_NAMESPACE"|"DELETE_NAMESPACE"|"UPDATE_NAMESPACE"|"UPDATE_SERVICE"|"REGISTER_INSTANCE"|"DEREGISTER_INSTANCE",
        Status = "SUBMITTED"|"PENDING"|"SUCCESS"|"FAIL",
        ErrorMessage = "string",
        ErrorCode = "string",
        CreateDate = as.POSIXct(
          "2015-01-01"
        ),
        UpdateDate = as.POSIXct(
          "2015-01-01"
        ),
        Targets = list(
          "string"
        )
      )
    )

### Request syntax

    svc$get_operation(
      OperationId = "string"
    )

### Examples

    ## Not run: 
    # Example: Get operation result
    svc$get_operation(
      OperationId = "gv4g5meo7ndmeh4fqskygvk23d2fijwa-k9302yzd"
    )

    ## End(Not run)
