object gimenez {
	var dinero = 3000000
	
	method pagarA(empleado) {
    dinero -= empleado.sueldo()
    empleado.cobrarSueldo()
} 
}

object galvan{
	var property totalDinero = 0
	var property totalDeuda = 0
	
	
	method sueldo(){
		return 150000
	}
	
	method gastar(cuanto){
		if (cuanto > totalDinero  ){
			totalDeuda = totalDeuda + ( cuanto - totalDinero )
			totalDinero = 0
		} else{
			totalDinero = totalDinero - cuanto
		}
	}
	
	method cobrarSueldo(){
		if ( totalDeuda < self.sueldo() ) {
			totalDinero = totalDinero + ( self.sueldo() - totalDeuda )
			totalDeuda = 0
		} else {
			totalDinero = 0
			totalDeuda = totalDeuda - self.sueldo() 
		}
		
		
	}
	
}

object baigorria{
	var property canDeEmpanadasVendidas = 0
	var totalCobrado = 0
	
	method sueldo(){
		return 150 * canDeEmpanadasVendidas
	}
	
	method cobrarSueldo(){
		totalCobrado =  totalCobrado + self.sueldo()
	}
	
	method totalCobrado() {
		return totalCobrado
	}
	
}