import GenerateInvoices from '../src/GenerateInvoices';

test('Deve gerar as notas fiscais', async () => {
  const generateInvoices = new GenerateInvoices();
  const output = await generateInvoices.execute();
  console.log(output);
});
