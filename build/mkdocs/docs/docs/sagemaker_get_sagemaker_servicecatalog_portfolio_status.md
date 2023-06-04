<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_get_sagemaker_servicecatalog_portfolio_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the status of Service Catalog in SageMaker

### Description

Gets the status of Service Catalog in SageMaker. Service Catalog is used
to create SageMaker projects.

### Usage

    sagemaker_get_sagemaker_servicecatalog_portfolio_status()

### Value

A list with the following syntax:

    list(
      Status = "Enabled"|"Disabled"
    )

### Request syntax

    svc$get_sagemaker_servicecatalog_portfolio_status()
