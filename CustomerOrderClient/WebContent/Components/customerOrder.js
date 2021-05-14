$(document).on("click", "#btnSave", function(event)
{
	
		$("#alertSuccess").text("");
		$("#alertSuccess").hide();
		$("#alertError").text("");
		$("#alertError").hide();

	// Validation of formCustomer
		
		var status = validateCustomerForm();

		if (status != true)
		{
			$("#alertError").text(status);
			$("#alertError").show();
			
			return;
		}

 
		$.ajax(
		{
			url : "CustomerOrderAPI",
			type : "POST",
			data : $("#formCustomer").serialize(),
			dataType : "text",
			complete : function(response, status)
			{
				onCustomerSaveComplete(response.responseText, status);
			}
		});

});

// Implementation of the Function to check whether the customer details saved successfully

function onCustomerSaveComplete(response, status)
{
		if (status == "success")
		{
				var resultSet = JSON.parse(response);
				
				if (resultSet.status.trim() == "success")
				{
					$("#alertSuccess").text("Successfully saved.");
					$("#alertSuccess").show();
					$("#divCustomerGrid").html(resultSet.data);
				} else if (resultSet.status.trim() == "error")
				{
					$("#alertError").text(resultSet.data);
					$("#alertError").show();
				}
				
			} else if (status == "error")
			{
				$("#alertError").text("Error while saving customer.");
				$("#alertError").show();
			} else
			{
				$("#alertError").text("Unknown error while saving the customer");
				$("#alertError").show();
			}
			$("#hidCustomerID").val("");
			$("#formCustomer")[0].reset();
}

$(document).on("click", ".btnUpdate", function(event)
		{
	
		$("#hidCustomerID").val($(this).data("customerId"));
		 $("#customerName").val($(this).closest("tr").find('td:eq(1)').text());
		 $("#customerAge").val($(this).closest("tr").find('td:eq(2)').text());
		 $("#customerPhone").val($(this).closest("tr").find('td:eq(3)').text());
		 $("#customerAddress").val($(this).closest("tr").find('td:eq(4)').text());
		 $("#customerEmail").val($(this).closest("tr").find('td:eq(5)').text());
		 $("#customerPassword").val($(this).closest("tr").find('td:eq(6)').text());
});

$(document).on("click", ".btnRemove", function(event)
{
	$.ajax(
	{
		 url : "CustomerOrderAPI",
		 type : "DELETE",
		 data : "customerId=" + $(this).data("customerId"),
		 dataType : "text",
		 complete : function(response, status)
		 {
		 onCustomerDeleteComplete(response.responseText, status);
		 }
	});
});


//Implementation of the Function to check whether the customer details deleted successfully

function onCustomerDeleteComplete(response, status)
{
	if (status == "success")
	{
		var resultSet = JSON.parse(response);
 
		if (resultSet.status.trim() == "success")
		{
			$("#alertSuccess").text("Successfully deleted the customer.");
			$("#alertSuccess").show();
			$("#divCustomerGrid").html(resultSet.data);
		} else if (resultSet.status.trim() == "error")
		{
			$("#alertError").text(resultSet.data);
			$("#alertError").show();
		}
 
	} else if (status == "error")
	{
		$("#alertError").text("Error while deleting customer");
		$("#alertError").show();
	} else
	{
		$("#alertError").text("Unknown error while deleting customer");
		$("#alertError").show();
	}
}

//Implementation of the Function to check whether every field is filled properly in the customer form



function validateCustomerForm()
{
	
	if ($("#customerName").val().trim() == "")					//Name ------------------------------------------------------
	{
		return "Insert Item Name.";
	} 
	
	if ($("#customerAge").val().trim() == "")					//AGE -------------------------------------------------------
	{
		return "Insert Age.";
	}
 
	
	if ($("#customerPhone").val().trim() == "")					// PHONE-----------------------------------------------------
	{
		return "Insert Phone.";
	}
	
	if ($("#customerAddress").val().trim() == "")				//ADDRESS----------------------------------------------------
	{
		return "Insert Address.";
	}
	
	if ($("#customerEmail").val().trim() == "")					//EMAIL------------------------------------------------------
	{
		return "Insert Email.";
	}
	
	if ($("#customerPassword").val().trim() == "")				//PASSWORD----------------------------------------------------
	{
		return "Insert Password.";
	}
	return true;
}


$(document).on("click", "#btnUpdate1", function(event)
		{
			
				$("#alertSuccess").text("");
				$("#alertSuccess").hide();
				$("#alertError").text("");
				$("#alertError").hide();

				
				$.ajax(
				{
					url : "CustomerOrderAPI",
					type : "PUT",
					data : $("#formCustomer").serialize(),
					dataType : "text",
					complete : function(response, status)
					{
						onCustomerSaveComplete(response.responseText, status);
					}
				});

		});
