import 'package:flutter/material.dart';

class DespesasController {

  List<Map<String, dynamic>> listaCategorias = [
    {'id': 0, 'categoria': 'Outros'},
    {'id': 1, 'categoria': 'Alimentos e Bebidas'},
    {'id': 2, 'categoria': 'Anim. estimação'},
    {'id': 3, 'categoria': 'Cartão Crédito'},
    {'id': 4, 'categoria': 'Educação'},
    {'id': 5, 'categoria': 'Lazer'},
    {'id': 6, 'categoria': 'Moradia'},
    {'id': 7, 'categoria': 'Pagamentos'},
    {'id': 8, 'categoria': 'Saúde'},
    {'id': 9, 'categoria': 'Serviços'},
    {'id': 10, 'categoria': 'Serviços financeiros'},
    {'id': 11, 'categoria': 'Transporte'},
    {'id': 12, 'categoria': 'Uso pessoal'},
  ];

  List<DropdownMenuItem<String>> getListaSubcategorias(int indice) {
    switch (indice) {
      case 0:
        return [
          const DropdownMenuItem(
            value: 'Outros',
            child: Text('Outros'),
          ),
      ];
      case 1:
        return [
          const DropdownMenuItem(
            value: 'Outros',
            child: Text('Outros'),
          ),
          const DropdownMenuItem(
            value: 'Bar',
            child: Text('Bar'),
          ),
          const DropdownMenuItem(
            value: 'Feira',
            child: Text('Feira'),
          ),
          const DropdownMenuItem(
            value: 'Padaria',
            child: Text('Padaria'),
          ),
          const DropdownMenuItem(
            value: 'Restaurante',
            child: Text('Restaurante'),
          ),
          const DropdownMenuItem(
            value: 'Supermercado',
            child: Text('Supermercado'),
          ),
        ];
      case 2:
        return [
          const DropdownMenuItem(
            value: 'Outros',
            child: Text('Outros'),
          ),
          const DropdownMenuItem(
            value: 'Banho/Tosa',
            child: Text('Banho/Tosa'),
          ),
          const DropdownMenuItem(
            value: 'Ração',
            child: Text('Ração'),
          ),
          const DropdownMenuItem(
            value: 'Remédios',
            child: Text('Remédios'),
          ),
          const DropdownMenuItem(
            value: 'Veterinário',
            child: Text('Veterinário'),
          ),
        ];
      case 3:
        return [
          const DropdownMenuItem(
            value: 'Outros',
            child: Text('Outros'),
          ),
        ];
      case 4: 
        return [
            const DropdownMenuItem(
            value: 'Outros',
            child: Text('Outros'),
          ),
            const DropdownMenuItem(
            value: 'Cursos',
            child: Text('Cursos'),
          ),
            const DropdownMenuItem(
            value: 'Material Escolar',
            child: Text('Material Escolar'),
          ),
            const DropdownMenuItem(
            value: 'Mensalidade',
            child: Text('Mensalidade'),
          ),
            const DropdownMenuItem(
            value: 'Transporte Escolar',
            child: Text('Transporte Escolar'),
          ),
        ];  
      case 5: 
        return[
            const DropdownMenuItem(
            value: 'Outros',
            child: Text('Outros'),
          ),
            const DropdownMenuItem(
            value: 'Cinema',
            child: Text('Cinema'),
          ),
            const DropdownMenuItem(
            value: 'Literatura',
            child: Text('Literatura'),
          ),
            const DropdownMenuItem(
            value: 'Shows',
            child: Text('Shows'),
          ),
            const DropdownMenuItem(
            value: 'Teatro',
            child: Text('Teatro'),
          ),
            const DropdownMenuItem(
            value: 'Viagens',
            child: Text('Viagens'),
          ),
        ];
      case 6: 
        return[
           const DropdownMenuItem(
            value: 'Outros',
            child: Text('Outros'),
          ),
           const DropdownMenuItem(
            value: 'Água',
            child: Text('Água'),
          ),
           const DropdownMenuItem(
            value: 'Aluguel',
            child: Text('Aluguel'),
          ),
           const DropdownMenuItem(
            value: 'Condomínio',
            child: Text('Condomínio'),
          ),
           const DropdownMenuItem(
            value: 'Internet',
            child: Text('Internet'),
          ),
           const DropdownMenuItem(
            value: 'Luz',
            child: Text('Luz'),
          ),
           const DropdownMenuItem(
            value: 'Telefone',
            child: Text('Telefone'),
          ),
        ];
      case 7: 
        return[
          const DropdownMenuItem(
            value: 'Outros',
            child: Text('Outros'),
          ),
          const DropdownMenuItem(
            value: 'Contas',
            child: Text('Contas'),
          ),
          const DropdownMenuItem(
            value: 'Empréstimo',
            child: Text('Empréstimo'),
          ),
          const DropdownMenuItem(
            value: 'Multas',
            child: Text('Multas'),
          ),
          const DropdownMenuItem(
            value: 'Taxas',
            child: Text('Taxas'),
          ),
        ];
      case 8: 
        return[
            const DropdownMenuItem(
            value: 'Outros',
            child: Text('Outros'),
          ),
            const DropdownMenuItem(
            value: 'Consulta',
            child: Text('Consulta'),
          ),
            const DropdownMenuItem(
            value: 'Dentista',
            child: Text('Dentista'),
          ),
            const DropdownMenuItem(
            value: 'Farmácia',
            child: Text('Farmácia'),
          ),
            const DropdownMenuItem(
            value: 'Medicamentos',
            child: Text('Medicamentos'),
          ),
            const DropdownMenuItem(
            value: 'Plano de saúde',
            child: Text('Plano de saúde'),
          ),
            const DropdownMenuItem(
            value: 'Terapia',
            child: Text('Terapia'),
          ),
        ];
      case 9: 
        return [
           const DropdownMenuItem(
            value: 'Outros',
            child: Text('Outros'),
          ),
           const DropdownMenuItem(
            value: 'Advocacia',
            child: Text('Advocacia'),
          ),
           const DropdownMenuItem(
            value: 'Contabilidade',
            child: Text('Contabilidade'),
          ),
           const DropdownMenuItem(
            value: 'Mecânica',
            child: Text('Mecânica'),
          ),
           const DropdownMenuItem(
            value: 'TI',
            child: Text('TI'),
          ),
        ];
      case 10: 
        return [
           const DropdownMenuItem(
            value: 'Outros',
            child: Text('Outros'),
          ),
           const DropdownMenuItem(
            value: 'CDB',
            child: Text('CDB'),
          ),
           const DropdownMenuItem(
            value: 'Corretora',
            child: Text('Corretora'),
          ),
           const DropdownMenuItem(
            value: 'Poupança',
            child: Text('Poupança'),
          ),
           const DropdownMenuItem(
            value: 'Seguros',
            child: Text('Seguros'),
          ),
        ];
      case 11: 
        return [
            const DropdownMenuItem(
            value: 'Outros',
            child: Text('Outros'),
          ),
            const DropdownMenuItem(
            value: 'Aplicativos',
            child: Text('Aplicativos'),
          ),
            const DropdownMenuItem(
            value: 'Combustível',
            child: Text('Combustível'),
          ),
            const DropdownMenuItem(
            value: 'Estacionamento',
            child: Text('Estacionamento'),
          ),
            const DropdownMenuItem(
            value: 'Impostos',
            child: Text('Impostos'),
          ),
            const DropdownMenuItem(
            value: 'Manutenção',
            child: Text('Manutenção'),
          ),
            const DropdownMenuItem(
            value: 'Multa',
            child: Text('Multa'),
          ),
            const DropdownMenuItem(
            value: 'Transporte Público',
            child: Text('Transporte Público'),
          ),
        ];
      case 12: 
        return [
            const DropdownMenuItem(
            value: 'Outros',
            child: Text('Outros'),
          ),
            const DropdownMenuItem(
            value: 'Academia',
            child: Text('Academia'),
          ),
            const DropdownMenuItem(
            value: 'Beleza',
            child: Text('Beleza'),
          ),
            const DropdownMenuItem(
            value: 'Presentes',
            child: Text('Presentes'),
          ),
            const DropdownMenuItem(
            value: 'Vestuário',
            child: Text('Vestuário'),
          ),
        ];
      default:
        return [];
    }
  }

}
