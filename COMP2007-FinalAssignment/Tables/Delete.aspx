﻿<%@ Page Title="TableDelete" Language="C#" MasterPageFile="~/Default.Master" CodeBehind="Delete.aspx.cs" Inherits="COMP2007_FinalAssignment.Tables.Delete" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <h3>Are you sure want to delete this Table?</h3>
        <asp:FormView runat="server"
            ItemType="COMP2007_FinalAssignment.Models.Table" DataKeyNames="projectID"
            DeleteMethod="DeleteItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Table with projectID <%: Request.QueryString["projectID"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Delete Table</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>projectID</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="projectID" ID="projectID" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>projectName</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="projectName" ID="projectName" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>date</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="date" ID="date" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>HoursWorked</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="HoursWorked" ID="HoursWorked" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>typeOfWork</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="typeOfWork" ID="typeOfWork" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>description</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="description" ID="description" Mode="ReadOnly" />
								</div>
							</div>
                 	<div class="row">
					  &nbsp;
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CssClass="btn btn-danger" />
							<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </ItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

