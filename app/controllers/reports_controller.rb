class ReportsController < ApplicationController
  def show
    @data = {
      name: "John Doe",
      date: Date.today.strftime("%B %d, %Y"),
      title: "Monthly Sales Report",
      content: "This report provides an overview of the monthly sales performance, including key metrics and insights."
    }
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "report", template: "reports/show", layout: "pdf"
      end
    end
  end
end
