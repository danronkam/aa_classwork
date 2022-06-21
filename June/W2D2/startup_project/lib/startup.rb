require "employee"

class Startup
    def initialize(name, funding, salaries)
        @name = name
        @funding = funding
        @salaries = salaries
        @employees = []
    end

    def name
        @name
    end

    def funding
        @funding
    end

    def salaries
        @salaries
    end

    def employees
        @employees
    end

    def valid_title?(title)
        if @salaries.has_key?(title)
            return true
        else
            return false
        end
    end

    def >(startup)
        if self.funding > startup.funding
            return true
        else
            return false
        end
    end

    def hire(employee_name, title)
        if self.valid_title?(title)
            employees << Employee.new(employee_name, title)
        else
            raise error
        end
    end

    def size
        return @employees.length
    end
    
    def pay_employee(employee)
        salaryTotal = @salaries[employee.title]

        if @funding >= salaryTotal
            employee.pay(salaryTotal)
            @funding -= salaryTotal
        else
            raise error
        end
    end

    def payday
        @employees.each do |employee|
            self.pay_employee(employee)
        end
    end

    def average_salary
        total = 0

        @employees.each do |name|
            total += @salaries[name.title]
        end

        return total / @employees.length
    end

    def close
        @employees = []
        @funding = 0
    end

    def acquire(startupA)
        @funding += startupA.funding
        
        startupA.salaries.each do |title, salary|
            if !@salaries.has_key?(title)
                @salaries[title] = salary
            # else
            #     @salaries[title] += salary
            end
        end

        @employees += startupA.employees

        startupA.close
    end
        
    


end
